.class public Lru;
.super Ljava/lang/Object;
.source "DingtalkOrgDistributeModel.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lru;
    .locals 1
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    .line 74
    const-class v0, Lru;

    invoke-static {p0, v0}, Lcor;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru;

    return-object v0
.end method
