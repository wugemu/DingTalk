.class final Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$5;
.super Ljava/lang/Object;
.source "TeleCallSelectMemberActivity.java"

# interfaces
.implements Lewl$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    .prologue
    .line 1976
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$5;->b:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    iput-object p2, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$5;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;)V
    .locals 2
    .param p1, "result"    # Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1979
    if-eqz p1, :cond_0

    .line 1980
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$5;->b:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;->stateCode:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->d(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1981
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$5;->b:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;->mobile:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->e(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1983
    :cond_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$5;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 1984
    return-void
.end method
