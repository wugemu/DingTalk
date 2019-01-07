.class public Lcom/taobao/weex/el/parse/Symbol;
.super Ljava/lang/Object;
.source "Symbol.java"


# instance fields
.field public final op:Ljava/lang/String;

.field public final pos:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "pos"    # I

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/taobao/weex/el/parse/Symbol;->op:Ljava/lang/String;

    .line 30
    iput p2, p0, Lcom/taobao/weex/el/parse/Symbol;->pos:I

    .line 31
    return-void
.end method
