.class final Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$18$1;
.super Ljava/lang/Object;
.source "TeleCallSelectMemberActivity.java"

# interfaces
.implements Lewl$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$18;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeRspModel;

.field final synthetic b:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$18;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$18;Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeRspModel;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$18;

    .prologue
    .line 1071
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$18$1;->b:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$18;

    iput-object p2, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$18$1;->a:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeRspModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$18$1;->b:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$18;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$18;->b:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$18$1;->b:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$18;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$18;->b:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$18$1;->a:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeRspModel;

    iget-object v2, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeRspModel;->cause:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Ljava/util/List;Ljava/lang/String;)V

    .line 1075
    return-void
.end method
