.class final Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$8$2;
.super Ljava/lang/Object;
.source "TeleConfHomeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$8;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$8;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$8;

    .prologue
    .line 410
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$8$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 414
    invoke-static {}, Lewo;->a()Lewo;

    move-result-object v1

    invoke-virtual {v1}, Lewo;->d()Z

    move-result v0

    .line 415
    .local v0, "success":Z
    if-eqz v0, :cond_0

    .line 416
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$8$2$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$8$2$1;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$8$2;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 423
    :cond_0
    return-void
.end method
