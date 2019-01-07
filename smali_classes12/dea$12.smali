.class final Ldea$12;
.super Ljava/lang/Object;
.source "ChatSendPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldea;->a(Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

.field final synthetic b:Ldea;


# direct methods
.method constructor <init>(Ldea;Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;)V
    .locals 0
    .param p1, "this$0"    # Ldea;

    .prologue
    .line 478
    iput-object p1, p0, Ldea$12;->b:Ldea;

    iput-object p2, p0, Ldea$12;->a:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 482
    iget-object v0, p0, Ldea$12;->a:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->url:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lebj;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldea$12;->a:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->url:Ljava/lang/String;

    const/4 v1, 0x0

    .line 483
    invoke-static {v0, v1}, Lebj;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ldea$12;->a:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->url:Ljava/lang/String;

    const/4 v1, 0x1

    .line 484
    invoke-static {v0, v1}, Lebj;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 485
    :cond_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Ldea$12$1;

    invoke-direct {v1, p0}, Ldea$12$1;-><init>(Ldea$12;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 506
    :cond_1
    :goto_0
    return-void

    .line 496
    :cond_2
    invoke-static {}, Lddp;->a()V

    .line 497
    iget-object v0, p0, Ldea$12;->b:Ldea;

    .line 1095
    iget-boolean v0, v0, Ldea;->d:Z

    .line 497
    if-nez v0, :cond_1

    .line 498
    iget-object v0, p0, Ldea$12;->a:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->extension:Ljava/io/Serializable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldea$12;->a:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->extension:Ljava/io/Serializable;

    instance-of v0, v0, Lcom/alibaba/android/dingtalkim/video/VideoExtendObject;

    if-eqz v0, :cond_1

    .line 500
    iget-object v0, p0, Ldea$12;->a:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    iget-object v9, v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->extension:Ljava/io/Serializable;

    check-cast v9, Lcom/alibaba/android/dingtalkim/video/VideoExtendObject;

    .line 501
    .local v9, "extendObject":Lcom/alibaba/android/dingtalkim/video/VideoExtendObject;
    iget-object v0, p0, Ldea$12;->b:Ldea;

    .line 2095
    invoke-virtual {v0}, Ldea;->a()Ldiz;

    move-result-object v0

    .line 501
    iget-object v1, p0, Ldea$12;->a:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    iget-object v1, v1, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->url:Ljava/lang/String;

    iget-wide v2, v9, Lcom/alibaba/android/dingtalkim/video/VideoExtendObject;->size:J

    iget-wide v4, v9, Lcom/alibaba/android/dingtalkim/video/VideoExtendObject;->duration:J

    iget v6, v9, Lcom/alibaba/android/dingtalkim/video/VideoExtendObject;->width:I

    iget v7, v9, Lcom/alibaba/android/dingtalkim/video/VideoExtendObject;->height:I

    iget-object v8, v9, Lcom/alibaba/android/dingtalkim/video/VideoExtendObject;->picUrl:Ljava/lang/String;

    invoke-virtual/range {v0 .. v8}, Ldiz;->a(Ljava/lang/String;JJIILjava/lang/String;)Z

    goto :goto_0
.end method
