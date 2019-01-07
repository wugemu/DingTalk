.class final Lazw$6;
.super Ljava/lang/Object;
.source "DingCommentPresenter.java"

# interfaces
.implements Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lazw;->a(Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:Lazw;


# direct methods
.method constructor <init>(Lazw;Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;JJ)V
    .locals 1
    .param p1, "this$0"    # Lazw;

    .prologue
    .line 274
    iput-object p1, p0, Lazw$6;->d:Lazw;

    iput-object p2, p0, Lazw$6;->a:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    iput-wide p3, p0, Lazw$6;->b:J

    iput-wide p5, p0, Lazw$6;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lazw$6;->d:Lazw;

    invoke-static {v0}, Lazw;->b(Lazw;)Lazv$b;

    move-result-object v0

    invoke-interface {v0}, Lazv$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    sget v0, Laxp$i;->dt_ding_file_comment_upload_failed:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 279
    iget-object v0, p0, Lazw$6;->d:Lazw;

    invoke-static {v0}, Lazw;->b(Lazw;)Lazv$b;

    move-result-object v0

    invoke-interface {v0}, Lazv$b;->H_()V

    .line 281
    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 290
    return-void
.end method

.method public final a(Ljava/io/File;Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;)V
    .locals 0
    .param p1, "desFile"    # Ljava/io/File;
    .param p2, "type"    # Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    .prologue
    .line 285
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lazw$6;->d:Lazw;

    invoke-static {v0}, Lazw;->b(Lazw;)Lazv$b;

    move-result-object v0

    invoke-interface {v0}, Lazv$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    sget v0, Laxp$i;->dt_ding_file_comment_upload_failed:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 296
    iget-object v0, p0, Lazw$6;->d:Lazw;

    invoke-static {v0}, Lazw;->b(Lazw;)Lazv$b;

    move-result-object v0

    invoke-interface {v0}, Lazv$b;->H_()V

    .line 298
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 302
    iget-object v0, p0, Lazw$6;->d:Lazw;

    invoke-static {v0}, Lazw;->b(Lazw;)Lazv$b;

    move-result-object v0

    invoke-interface {v0}, Lazv$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lazw$6;->d:Lazw;

    iget-object v1, p0, Lazw$6;->a:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    iget-wide v2, p0, Lazw$6;->b:J

    iget-wide v4, p0, Lazw$6;->c:J

    invoke-static/range {v0 .. v5}, Lazw;->a(Lazw;Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;JJ)V

    .line 305
    :cond_0
    return-void
.end method
