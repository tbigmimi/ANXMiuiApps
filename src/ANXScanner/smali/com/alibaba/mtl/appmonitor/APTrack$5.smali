.class Lcom/alibaba/mtl/appmonitor/APTrack$5;
.super Ljava/lang/Object;
.source "APTrack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/mtl/appmonitor/APTrack;->commit(Ljava/lang/String;Ljava/lang/String;D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:D

.field final synthetic a:Lcom/alibaba/mtl/appmonitor/APTrack;

.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/mtl/appmonitor/APTrack;Ljava/lang/String;Ljava/lang/String;D)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/APTrack$5;->a:Lcom/alibaba/mtl/appmonitor/APTrack;

    iput-object p2, p0, Lcom/alibaba/mtl/appmonitor/APTrack$5;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/mtl/appmonitor/APTrack$5;->b:Ljava/lang/String;

    iput-wide p4, p0, Lcom/alibaba/mtl/appmonitor/APTrack$5;->a:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 148
    :try_start_0
    sget-object v1, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a:Lcom/alibaba/mtl/appmonitor/IMonitor;

    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/APTrack$5;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/mtl/appmonitor/APTrack$5;->b:Ljava/lang/String;

    iget-wide v4, p0, Lcom/alibaba/mtl/appmonitor/APTrack$5;->a:D

    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/APTrack$5;->a:Lcom/alibaba/mtl/appmonitor/APTrack;

    invoke-static {v0}, Lcom/alibaba/mtl/appmonitor/APTrack;->a(Lcom/alibaba/mtl/appmonitor/APTrack;)Ljava/util/Map;

    move-result-object v6

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/mtl/appmonitor/IMonitor;->counter_commit1(Ljava/lang/String;Ljava/lang/String;DLjava/util/Map;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_0
    return-void

    .line 149
    :catch_0
    move-exception v0

    .line 150
    const-string v1, "APTrack"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
