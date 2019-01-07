.class public final Lcnv;
.super Ljava/lang/Object;
.source "BaseGrayUtil.java"


# static fields
.field private static a:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcnv;->a:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    .line 1072
    iget-object v0, v0, Lcid;->b:Lckd;

    .line 16
    if-eqz v0, :cond_0

    .line 17
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    .line 2072
    iget-object v0, v0, Lcid;->b:Lckd;

    .line 17
    invoke-virtual {v0}, Lckd;->c()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcnv;->a:Ljava/lang/Boolean;

    .line 19
    :cond_0
    sget-object v0, Lcnv;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
