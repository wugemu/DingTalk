.class public final Lcxy;
.super Lcxz;
.source "UserCRMLinkFromHolder.java"


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "isTo"    # Z

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcxz;-><init>(Z)V

    .line 32
    return-void
.end method


# virtual methods
.method protected final b()I
    .locals 1

    .prologue
    .line 46
    sget v0, Lctk$g;->chatting_item_from:I

    return v0
.end method

.method protected final c()I
    .locals 1

    .prologue
    .line 51
    sget v0, Lctk$g;->chatting_item_from_crm_link:I

    return v0
.end method
