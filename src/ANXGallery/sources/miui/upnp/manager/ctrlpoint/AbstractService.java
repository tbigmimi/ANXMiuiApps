package miui.upnp.manager.ctrlpoint;

import miui.upnp.typedef.device.Service;

public abstract class AbstractService {
    protected Service service;

    public AbstractService(Service service) {
        this.service = service;
    }
}
