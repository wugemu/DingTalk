.class final Lcom/alibaba/android/dingtalkim/models/ShareDelegate$12;
.super Ljava/lang/Object;
.source "ShareDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/models/ShareDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldiz;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/models/ShareDelegate;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;Ldiz;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    .prologue
    .line 823
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$12;->b:Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$12;->a:Ldiz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 826
    new-instance v0, Lcom/alibaba/android/dingtalkim/base/model/AlipayRedPacketsMessageBodyDo;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/base/model/AlipayRedPacketsMessageBodyDo;-><init>()V

    .line 827
    .local v0, "alipayRedPacketsMessageBodyDo":Lcom/alibaba/android/dingtalkim/base/model/AlipayRedPacketsMessageBodyDo;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$12;->b:Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->i(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/AlipayRedPacketsMessageBodyDo;->action:Ljava/lang/String;

    .line 828
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$12;->b:Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->k(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/AlipayRedPacketsMessageBodyDo;->title:Ljava/lang/String;

    .line 829
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$12;->b:Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->d(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/AlipayRedPacketsMessageBodyDo;->description:Ljava/lang/String;

    .line 830
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$12;->a:Ldiz;

    invoke-virtual {v1, v0}, Ldiz;->a(Ljava/lang/Object;)V

    .line 831
    return-void
.end method
