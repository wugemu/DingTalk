.class final Lfax$1;
.super Lcmg;
.source "OrgInviteAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfax;->a(Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Lfps;",
        "Lcom/alibaba/android/user/model/OrgTmpCodeInviteObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfax;


# direct methods
.method constructor <init>(Lfax;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lfax;

    .prologue
    .line 56
    .local p2, "x0":Lcma;, "Lcma<Lcom/alibaba/android/user/model/OrgTmpCodeInviteObject;>;"
    iput-object p1, p0, Lfax$1;->a:Lfax;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 56
    check-cast p1, Lfps;

    .line 1060
    invoke-static {p1}, Lcom/alibaba/android/user/model/OrgTmpCodeInviteObject;->fromIDLModel(Lfps;)Lcom/alibaba/android/user/model/OrgTmpCodeInviteObject;

    move-result-object v0

    .line 56
    return-object v0
.end method
