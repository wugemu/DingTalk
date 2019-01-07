.class public final Lfsn;
.super Ljava/lang/Object;
.source "NameCardEditPrivacyBean.java"

# interfaces
.implements Lfsi;


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfsn;->a:Z

    return-void
.end method


# virtual methods
.method public final a(Lfsh;)I
    .locals 1
    .param p1, "typeFactory"    # Lfsh;

    .prologue
    .line 28
    if-eqz p1, :cond_0

    .line 29
    const/4 v0, 0x7

    .line 31
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
