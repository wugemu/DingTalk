.class final Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$6$2;
.super Ljava/lang/Object;
.source "EmotionFavActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$6;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$6;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$6;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$6$2;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 266
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$6$2;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$6;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$6;->b:Lcom/alibaba/wukong/Callback;

    invoke-static {}, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    return-void
.end method
