.class final Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity$1;
.super Ljava/lang/Object;
.source "TeleConfSelectMemberActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 151
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Cancel conf select members"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->finish()V

    .line 153
    return-void
.end method
