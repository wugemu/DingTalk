.class public final Lfso;
.super Ljava/lang/Object;
.source "NameCardEditStyleBean.java"

# interfaces
.implements Lfsi;


# instance fields
.field public a:Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;

.field public b:Lftb$e;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lfsh;)I
    .locals 1
    .param p1, "typeFactory"    # Lfsh;

    .prologue
    .line 40
    if-eqz p1, :cond_0

    .line 41
    const/4 v0, 0x6

    .line 43
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
