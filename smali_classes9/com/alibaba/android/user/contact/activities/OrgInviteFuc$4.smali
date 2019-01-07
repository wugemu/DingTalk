.class final Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$4;
.super Lcmg;
.source "OrgInviteFuc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;->c(JJ)Lcmg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Lfpi;",
        "Lcom/alibaba/android/user/model/OrgInviteObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;Lcma;J)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;

    .prologue
    .line 186
    .local p2, "x0":Lcma;, "Lcma<Lcom/alibaba/android/user/model/OrgInviteObject;>;"
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$4;->b:Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;

    iput-wide p3, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$4;->a:J

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 186
    check-cast p1, Lfpi;

    .line 1189
    invoke-static {p1}, Lcom/alibaba/android/user/model/OrgInviteObject;->fromIDLModel(Lfpi;)Lcom/alibaba/android/user/model/OrgInviteObject;

    move-result-object v0

    .line 1190
    iget-wide v2, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$4;->a:J

    iput-wide v2, v0, Lcom/alibaba/android/user/model/OrgInviteObject;->orgId:J

    .line 186
    return-object v0
.end method
