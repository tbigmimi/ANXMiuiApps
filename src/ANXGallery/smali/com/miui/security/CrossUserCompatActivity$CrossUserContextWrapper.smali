.class Lcom/miui/security/CrossUserCompatActivity$CrossUserContextWrapper;
.super Landroid/content/ContextWrapper;
.source "CrossUserCompatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/security/CrossUserCompatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CrossUserContextWrapper"
.end annotation


# instance fields
.field mBase:Landroid/content/Context;

.field mCrossUserId:I

.field final synthetic this$0:Lcom/miui/security/CrossUserCompatActivity;


# direct methods
.method public constructor <init>(Lcom/miui/security/CrossUserCompatActivity;Landroid/content/Context;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/security/CrossUserCompatActivity;
    .param p2, "base"    # Landroid/content/Context;
    .param p3, "userId"    # I

    .prologue
    .line 133
    iput-object p1, p0, Lcom/miui/security/CrossUserCompatActivity$CrossUserContextWrapper;->this$0:Lcom/miui/security/CrossUserCompatActivity;

    .line 134
    invoke-direct {p0, p2}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 135
    iput-object p2, p0, Lcom/miui/security/CrossUserCompatActivity$CrossUserContextWrapper;->mBase:Landroid/content/Context;

    .line 136
    iput p3, p0, Lcom/miui/security/CrossUserCompatActivity$CrossUserContextWrapper;->mCrossUserId:I

    .line 137
    return-void
.end method


# virtual methods
.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/miui/security/CrossUserCompatActivity$CrossUserContextWrapper;->mBase:Landroid/content/Context;

    iget v1, p0, Lcom/miui/security/CrossUserCompatActivity$CrossUserContextWrapper;->mCrossUserId:I

    invoke-static {v0, v1}, Lcom/miui/internal/CrossUserHelper;->getContentResolver(Landroid/content/Context;I)Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method
