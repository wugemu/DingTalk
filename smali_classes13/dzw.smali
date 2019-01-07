.class public final Ldzw;
.super Ldzl;
.source "LineHeaderHolder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ldzl;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 24
    sget v0, Lctk$g;->line_header_view:I

    return v0
.end method

.method final b()V
    .locals 0

    .prologue
    .line 15
    return-void
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 20
    return-void
.end method

.method public final d()Lcom/alibaba/android/dingtalkim/session/header/Header;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/alibaba/android/dingtalkim/session/header/Header;->LINE:Lcom/alibaba/android/dingtalkim/session/header/Header;

    return-object v0
.end method
