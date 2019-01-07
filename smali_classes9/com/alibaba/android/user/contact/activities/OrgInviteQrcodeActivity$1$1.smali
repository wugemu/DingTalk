.class final Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$1$1;
.super Ljava/lang/Object;
.source "OrgInviteQrcodeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$1;J)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$1;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$1$1;->b:Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$1;

    iput-wide p2, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$1$1;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$1$1;->b:Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$1;->a:Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$1$1;->a:J

    invoke-static {v0, v2, v3}, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;->a(Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;J)V

    .line 67
    return-void
.end method
