.class final Lfak$34;
.super Lcmg;
.source "ContactAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfak;->c(JLcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Lfpd;",
        "Lcom/alibaba/android/user/model/OrgDetailObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfak;


# direct methods
.method constructor <init>(Lfak;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lfak;

    .prologue
    .line 1291
    .local p2, "x0":Lcma;, "Lcma<Lcom/alibaba/android/user/model/OrgDetailObject;>;"
    iput-object p1, p0, Lfak$34;->a:Lfak;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1291
    check-cast p1, Lfpd;

    .line 2295
    invoke-static {p1}, Lcom/alibaba/android/user/model/OrgDetailObject;->fromIDLModel(Lfpd;)Lcom/alibaba/android/user/model/OrgDetailObject;

    move-result-object v0

    .line 1291
    return-object v0
.end method
