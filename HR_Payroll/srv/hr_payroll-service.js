module.exports = async(srv) =>{
    const account_srv =  await cds.connect.to('sap.capire.employee.employeeService')
    
    // react on event messages from employee service
    account_srv.on('employeeUpdated', (msg) => {
        console.debug('> received', msg)
    })
    
    srv.on('READ', 'Employee', async (req) => {
        const {employee } = account_srv.entities
      
        const tx = account_srv.transaction(req)
        const results = await tx.read(employee)
      
        return results
    })
    

}