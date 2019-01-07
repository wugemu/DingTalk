.class public final Lfaw$1;
.super Lcmg;
.source "OrgExtFieldAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfaw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Lfph;",
        "Lcom/alibaba/android/user/model/OrgExtFieldObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfaw;


# direct methods
.method public constructor <init>(Lfaw;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lfaw;

    .prologue
    .line 47
    .local p2, "x0":Lcma;, "Lcma<Lcom/alibaba/android/user/model/OrgExtFieldObject;>;"
    iput-object p1, p0, Lfaw$1;->a:Lfaw;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    check-cast p1, Lfph;

    .line 1051
    invoke-static {p1}, Lcom/alibaba/android/user/model/OrgExtFieldObject;->fromIdlModel(Lfph;)Lcom/alibaba/android/user/model/OrgExtFieldObject;

    move-result-object v0

    .line 47
    return-object v0
.end method
