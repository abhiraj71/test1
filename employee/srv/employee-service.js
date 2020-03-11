const cds = require('@sap/cds')
module.exports = cds.service.impl((srv) => {


    srv.after(['CREATE', 'UPDATE', 'DELETE'], 'employee', async (_, req) => {
        const { Name } = req.data
        req.on('succeeded', () => {
            srv.emit('employeeUpdated', {Name})
            console.log(`Event Emitted-Employee Updated  "${Name}" Take necessary Changes.`)
        })
    })
})
