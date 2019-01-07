.class final Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar$1;
.super Ljava/lang/Object;
.source "SpaceRatingBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:F

.field final synthetic c:F

.field final synthetic d:Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;IFF)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar$1;->d:Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;

    iput p2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar$1;->a:I

    iput p3, p0, Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar$1;->b:F

    iput p4, p0, Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar$1;->c:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 221
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar$1;->d:Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;->a(Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 222
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar$1;->d:Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar$1;->a:I

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar$1;->b:F

    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar$1;->c:F

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;->a(Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;IFF)V

    .line 223
    return-void
.end method
