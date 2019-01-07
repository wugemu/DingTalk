.class final Lfak$43;
.super Lcmg;
.source "ContactAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfak;->d(JLcma;)V
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

.field final synthetic b:Lfak;


# direct methods
.method constructor <init>(Lfak;Lcma;J)V
    .locals 1
    .param p1, "this$0"    # Lfak;

    .prologue
    .line 1463
    .local p2, "x0":Lcma;, "Lcma<Lcom/alibaba/android/user/model/OrgInviteObject;>;"
    iput-object p1, p0, Lfak$43;->b:Lfak;

    iput-wide p3, p0, Lfak$43;->a:J

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1463
    check-cast p1, Lfpi;

    .line 2466
    invoke-static {p1}, Lcom/alibaba/android/user/model/OrgInviteObject;->fromIDLModel(Lfpi;)Lcom/alibaba/android/user/model/OrgInviteObject;

    move-result-object v0

    .line 2467
    iget-wide v2, p0, Lfak$43;->a:J

    iput-wide v2, v0, Lcom/alibaba/android/user/model/OrgInviteObject;->orgId:J

    .line 1463
    return-object v0
.end method
