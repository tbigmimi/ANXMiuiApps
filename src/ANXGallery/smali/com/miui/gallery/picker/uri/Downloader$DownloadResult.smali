.class public Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;
.super Ljava/lang/Object;
.source "Downloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/picker/uri/Downloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/picker/uri/Downloader$DownloadResult$State;
    }
.end annotation


# instance fields
.field public mPath:Ljava/lang/String;

.field public mState:Lcom/miui/gallery/picker/uri/Downloader$DownloadResult$State;

.field public mTask:Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;


# direct methods
.method constructor <init>(Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;Lcom/miui/gallery/picker/uri/Downloader$DownloadResult$State;Ljava/lang/String;)V
    .locals 0
    .param p1, "task"    # Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;
    .param p2, "state"    # Lcom/miui/gallery/picker/uri/Downloader$DownloadResult$State;
    .param p3, "path"    # Ljava/lang/String;

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput-object p1, p0, Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;->mTask:Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;

    .line 205
    iput-object p2, p0, Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;->mState:Lcom/miui/gallery/picker/uri/Downloader$DownloadResult$State;

    .line 206
    iput-object p3, p0, Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;->mPath:Ljava/lang/String;

    .line 207
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadResult{mTask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;->mTask:Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;->mState:Lcom/miui/gallery/picker/uri/Downloader$DownloadResult$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
