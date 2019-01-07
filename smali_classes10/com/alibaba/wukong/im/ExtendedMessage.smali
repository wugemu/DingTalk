.class public Lcom/alibaba/wukong/im/ExtendedMessage;
.super Lcom/alibaba/wukong/im/message/MessageImpl;
.source "ExtendedMessage.java"


# static fields
.field private static final serialVersionUID:J = -0x226f62b30e612411L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/alibaba/wukong/im/message/MessageImpl;-><init>()V

    return-void
.end method


# virtual methods
.method protected final doAfter()V
    .locals 0

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/alibaba/wukong/im/ExtendedMessage;->onCreateMessage()V

    .line 15
    return-void
.end method

.method public onCreateMessage()V
    .locals 0

    .prologue
    .line 20
    return-void
.end method
