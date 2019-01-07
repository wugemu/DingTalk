.class public Lmtopsdk/mtop/xcommand/NewXcmdEvent;
.super Ljava/lang/Object;
.source "NewXcmdEvent.java"


# instance fields
.field value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lmtopsdk/mtop/xcommand/NewXcmdEvent;->value:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lmtopsdk/mtop/xcommand/NewXcmdEvent;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lmtopsdk/mtop/xcommand/NewXcmdEvent;->value:Ljava/lang/String;

    .line 26
    return-void
.end method
