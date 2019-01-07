.class final Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$6$5;
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$6;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$6;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$6;

    .prologue
    .line 324
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$6$5;->b:Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$6;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$6$5;->a:Ljava/lang/String;

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
    .line 327
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$6$5;->b:Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$6;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$6;->b:Lcom/alibaba/wukong/Callback;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$6$5;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 328
    return-void
.end method
