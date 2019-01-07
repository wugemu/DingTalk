.class public final Lfsr;
.super Ljava/lang/Object;
.source "NameCardInfosInputBean.java"

# interfaces
.implements Lfsi;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lfsh;)I
    .locals 1
    .param p1, "typeFactory"    # Lfsh;

    .prologue
    .line 53
    if-eqz p1, :cond_0

    .line 54
    const/16 v0, 0x10

    .line 56
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
