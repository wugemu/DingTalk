.class final Lcom/alibaba/android/dingtalkim/impls/MessageEncryptPhotoObjectsFetcher$2;
.super Ljava/lang/Object;
.source "MessageEncryptPhotoObjectsFetcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/impls/MessageEncryptPhotoObjectsFetcher;->getPhotoUrl(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/Callback;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/android/dingtalkim/impls/MessageEncryptPhotoObjectsFetcher;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/impls/MessageEncryptPhotoObjectsFetcher;Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/impls/MessageEncryptPhotoObjectsFetcher;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/impls/MessageEncryptPhotoObjectsFetcher$2;->c:Lcom/alibaba/android/dingtalkim/impls/MessageEncryptPhotoObjectsFetcher;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/impls/MessageEncryptPhotoObjectsFetcher$2;->a:Lcom/alibaba/wukong/Callback;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/impls/MessageEncryptPhotoObjectsFetcher$2;->b:Ljava/lang/String;

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
    .line 115
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/MessageEncryptPhotoObjectsFetcher$2;->a:Lcom/alibaba/wukong/Callback;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/impls/MessageEncryptPhotoObjectsFetcher$2;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 116
    return-void
.end method
