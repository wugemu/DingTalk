.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$140;
.super Ljava/lang/Object;
.source "ChatMsgActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 5408
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$140;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$140;->a:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 5411
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$140;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->o(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5412
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$140;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->o(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$140$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$140$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$140;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5421
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$140;->a:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->url:Ljava/lang/String;

    const/4 v1, 0x0

    .line 5422
    invoke-static {v0, v1}, Lebj;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$140;->a:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->url:Ljava/lang/String;

    .line 5424
    invoke-static {v0, v2}, Lebj;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$140;->a:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->url:Ljava/lang/String;

    const/4 v1, 0x1

    .line 5426
    invoke-static {v0, v1}, Lebj;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5427
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$140;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->o(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5428
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$140;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->o(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$140$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$140$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$140;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5453
    :cond_2
    :goto_0
    return-void

    .line 5439
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$140;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->af(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    .line 5440
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$140;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ag(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5441
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$140;->a:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->extension:Ljava/io/Serializable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$140;->a:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->extension:Ljava/io/Serializable;

    instance-of v0, v0, Lcom/alibaba/android/dingtalkim/video/VideoExtendObject;

    if-eqz v0, :cond_2

    .line 5443
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$140;->a:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    iget-object v9, v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->extension:Ljava/io/Serializable;

    check-cast v9, Lcom/alibaba/android/dingtalkim/video/VideoExtendObject;

    .line 5444
    .local v9, "extendObject":Lcom/alibaba/android/dingtalkim/video/VideoExtendObject;
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$140;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->i:Ldiz;

    invoke-virtual {v0}, Ldiz;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5445
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$140;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->i:Ldiz;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$140;->a:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    iget-object v1, v1, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->url:Ljava/lang/String;

    iget-wide v2, v9, Lcom/alibaba/android/dingtalkim/video/VideoExtendObject;->size:J

    iget-wide v4, v9, Lcom/alibaba/android/dingtalkim/video/VideoExtendObject;->duration:J

    iget v6, v9, Lcom/alibaba/android/dingtalkim/video/VideoExtendObject;->width:I

    iget v7, v9, Lcom/alibaba/android/dingtalkim/video/VideoExtendObject;->height:I

    iget-object v8, v9, Lcom/alibaba/android/dingtalkim/video/VideoExtendObject;->picUrl:Ljava/lang/String;

    invoke-virtual/range {v0 .. v8}, Ldiz;->a(Ljava/lang/String;JJIILjava/lang/String;)Z

    goto :goto_0

    .line 5449
    :cond_4
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "ChatMsgActivity [sendCommonVideo] but peer invalid"

    invoke-static {v0, v2, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
