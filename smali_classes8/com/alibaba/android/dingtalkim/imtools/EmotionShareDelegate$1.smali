.class final Lcom/alibaba/android/dingtalkim/imtools/EmotionShareDelegate$1;
.super Ljava/lang/Object;
.source "EmotionShareDelegate.java"

# interfaces
.implements Ldjp$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/imtools/EmotionShareDelegate;->doLogic(Landroid/app/Activity;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/imtools/EmotionShareDelegate;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/imtools/EmotionShareDelegate;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/imtools/EmotionShareDelegate;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/imtools/EmotionShareDelegate$1;->b:Lcom/alibaba/android/dingtalkim/imtools/EmotionShareDelegate;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/imtools/EmotionShareDelegate$1;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/EmotionShareDelegate$1;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/EmotionShareDelegate$1;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 41
    :cond_0
    return-void
.end method
