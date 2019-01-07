.class final Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$4;
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    .prologue
    .line 1926
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$4;->b:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    iput-object p2, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$4;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1929
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$4;->b:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->j(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1930
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$4;->b:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_SYS:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Ljava/lang/Integer;)V

    .line 1931
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$4;->b:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VOIP:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$4;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 1932
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$4;->b:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VIDEO_P2P:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$4;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 1933
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$4;->b:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_CONF_CALL:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$4;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 1939
    :goto_0
    return-void

    .line 1936
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$4;->b:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$4;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1937
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$4;->b:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$4;->a:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Ljava/lang/String;Z)V

    goto :goto_0
.end method
