.class public final Lcwm;
.super Lcwo;
.source "NewDingCardFromViewHolder.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcwo;-><init>(Z)V

    .line 9
    return-void
.end method


# virtual methods
.method protected final b()I
    .locals 1

    .prologue
    .line 13
    sget v0, Lctk$g;->chatting_item_from:I

    return v0
.end method

.method protected final c()I
    .locals 1

    .prologue
    .line 18
    sget v0, Lctk$g;->chatting_item_new_ding_card:I

    return v0
.end method
