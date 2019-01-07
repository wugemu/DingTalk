.class public final Ldba;
.super Ldav;
.source "ResumeAuthToViewHolder.java"


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "isTo"    # Z

    .prologue
    .line 16
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ldav;-><init>(Z)V

    .line 17
    return-void
.end method


# virtual methods
.method protected final b()I
    .locals 1

    .prologue
    .line 21
    sget v0, Lctk$g;->chatting_item_to:I

    return v0
.end method

.method protected final c()I
    .locals 1

    .prologue
    .line 26
    sget v0, Lctk$g;->chatting_item_resume_auth:I

    return v0
.end method
