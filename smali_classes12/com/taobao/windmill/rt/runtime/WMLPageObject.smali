.class public abstract Lcom/taobao/windmill/rt/runtime/WMLPageObject;
.super Ljava/lang/Object;
.source "WMLPageObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/windmill/rt/runtime/WMLPageObject$Type;
    }
.end annotation


# instance fields
.field public c:Lcom/taobao/windmill/rt/runtime/WMLPageObject$Type;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljpm;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method
