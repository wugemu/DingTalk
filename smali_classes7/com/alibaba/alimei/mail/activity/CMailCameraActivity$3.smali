.class final Lcom/alibaba/alimei/mail/activity/CMailCameraActivity$3;
.super Ljava/lang/Object;
.source "CMailCameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->a(IIIIIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:I

.field final synthetic g:I

.field final synthetic h:I

.field final synthetic i:I

.field final synthetic j:Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;IIIIIIIII)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;

    .prologue
    .line 478
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity$3;->j:Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;

    iput p2, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity$3;->a:I

    iput p3, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity$3;->b:I

    iput p4, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity$3;->c:I

    iput p5, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity$3;->d:I

    iput p6, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity$3;->e:I

    iput p7, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity$3;->f:I

    iput p8, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity$3;->g:I

    iput p9, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity$3;->h:I

    iput p10, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity$3;->i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 481
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity$3;->j:Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    :goto_0
    return-void

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity$3;->j:Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;

    iget v1, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity$3;->a:I

    iget v2, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity$3;->b:I

    iget v3, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity$3;->c:I

    iget v4, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity$3;->d:I

    iget v5, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity$3;->e:I

    iget v6, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity$3;->f:I

    iget v7, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity$3;->g:I

    iget v8, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity$3;->h:I

    iget v9, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity$3;->i:I

    invoke-static/range {v0 .. v9}, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;IIIIIIIII)V

    goto :goto_0
.end method
