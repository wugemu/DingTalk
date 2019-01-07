.class final Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$21;
.super Ljava/lang/Object;
.source "TeleCallSelectMemberActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    .prologue
    .line 1811
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$21;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1814
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$21;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->j(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1815
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$21;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_SYS:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Ljava/lang/Integer;)V

    .line 1817
    :cond_0
    return-void
.end method
