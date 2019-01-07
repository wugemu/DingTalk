.class public final Lcvq;
.super Lcvr;
.source "GmicNameCardFromViewHolder.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcvr;-><init>(Z)V

    .line 15
    return-void
.end method


# virtual methods
.method protected final b()I
    .locals 1

    .prologue
    .line 19
    sget v0, Lctk$g;->im_gmic_chatting_item_from:I

    return v0
.end method

.method protected final c()I
    .locals 1

    .prologue
    .line 24
    sget v0, Lctk$g;->im_chatting_item_gmic_namecard:I

    return v0
.end method
