.class final Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$18$2;
.super Ljava/lang/Object;
.source "TeleCallSelectMemberActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 1098
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$18$2;->b:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$18;

    iput-object p2, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$18$2;->a:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeRspModel;

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
    .line 1101
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$18$2;->b:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$18;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$18;->b:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$18$2;->a:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeRspModel;

    invoke-static {v0, v1}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeRspModel;)V

    .line 1102
    return-void
.end method
