.class public final Lfsk;
.super Ljava/lang/Object;
.source "NameCardEditCardBean.java"

# interfaces
.implements Lfsi;


# instance fields
.field public a:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lfsh;)I
    .locals 1
    .param p1, "typeFactory"    # Lfsh;

    .prologue
    .line 24
    if-eqz p1, :cond_0

    .line 25
    const/4 v0, 0x4

    .line 27
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
