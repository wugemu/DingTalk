.class public final Lfsm;
.super Ljava/lang/Object;
.source "NameCardEditEntryBean.java"

# interfaces
.implements Lfsi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfsm$a;
    }
.end annotation


# instance fields
.field public a:Lftb$b;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Lfsm$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method


# virtual methods
.method public final a(Lfsh;)I
    .locals 1
    .param p1, "typeFactory"    # Lfsh;

    .prologue
    .line 52
    if-eqz p1, :cond_0

    .line 53
    const/4 v0, 0x5

    .line 55
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
