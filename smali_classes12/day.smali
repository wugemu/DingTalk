.class public final Lday;
.super Ldau;
.source "JobCardToViewHolder.java"


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "isTo"    # Z

    .prologue
    .line 18
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ldau;-><init>(Z)V

    .line 19
    return-void
.end method


# virtual methods
.method protected final b()I
    .locals 1

    .prologue
    .line 23
    sget v0, Lctk$g;->chatting_item_no_avatar_card:I

    return v0
.end method

.method protected final c()I
    .locals 1

    .prologue
    .line 28
    sget v0, Lctk$g;->chatting_item_job:I

    return v0
.end method