.class final Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$13;
.super Ljava/lang/Object;
.source "AnnounceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;

    .prologue
    .line 355
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$13;->a:Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 358
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$13;->a:Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$13;->a:Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->e(Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;)Ldtl;

    move-result-object v1

    iget-object v1, v1, Ldtl;->h:Ldtk;

    iget-object v1, v1, Ldtk;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->a(Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;Ljava/lang/String;)V

    .line 359
    return-void
.end method
