.class final Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity$4;
.super Ljava/lang/Object;
.source "TeleVideoConfRecordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity$4;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 179
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity$4;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;)Lexa$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity$4;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;)Lexa$a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lexa$a;->a(Z)V

    .line 182
    :cond_0
    return-void
.end method
