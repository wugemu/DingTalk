.class public Lcom/taobao/weex/dom/binding/WXStatement;
.super Lfk;
.source "WXStatement.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfk",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final WX_FOR:Ljava/lang/String; = "[[repeat]]"

.field public static final WX_FOR_INDEX:Ljava/lang/String; = "@index"

.field public static final WX_FOR_ITEM:Ljava/lang/String; = "@alias"

.field public static final WX_FOR_LIST:Ljava/lang/String; = "@expression"

.field public static final WX_IF:Ljava/lang/String; = "[[match]]"

.field public static final WX_ONCE:Ljava/lang/String; = "[[once]]"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lfk;-><init>()V

    .line 73
    return-void
.end method

.method public constructor <init>(Lfw;)V
    .locals 0
    .param p1, "map"    # Lfw;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lfk;-><init>(Lfw;)V

    .line 77
    return-void
.end method


# virtual methods
.method protected clone()Lcom/taobao/weex/dom/binding/WXStatement;
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lcom/taobao/weex/dom/binding/WXStatement;

    invoke-direct {v0, p0}, Lcom/taobao/weex/dom/binding/WXStatement;-><init>(Lfw;)V

    return-object v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/taobao/weex/dom/binding/WXStatement;->clone()Lcom/taobao/weex/dom/binding/WXStatement;

    move-result-object v0

    return-object v0
.end method
