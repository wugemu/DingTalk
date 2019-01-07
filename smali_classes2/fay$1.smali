.class final Lfay$1;
.super Lcmg;
.source "OrgScoreAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfay;->a(JLcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Lfpt;",
        "Lcom/alibaba/android/user/model/OrgTrendDataObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfay;


# direct methods
.method constructor <init>(Lfay;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lfay;

    .prologue
    .line 67
    .local p2, "x0":Lcma;, "Lcma<Lcom/alibaba/android/user/model/OrgTrendDataObject;>;"
    iput-object p1, p0, Lfay$1;->a:Lfay;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 67
    check-cast p1, Lfpt;

    .line 1071
    new-instance v0, Lcom/alibaba/android/user/model/OrgTrendDataObject;

    invoke-direct {v0}, Lcom/alibaba/android/user/model/OrgTrendDataObject;-><init>()V

    invoke-virtual {v0, p1}, Lcom/alibaba/android/user/model/OrgTrendDataObject;->fromIDLModel(Lfpt;)Lcom/alibaba/android/user/model/OrgTrendDataObject;

    move-result-object v0

    .line 67
    return-object v0
.end method
