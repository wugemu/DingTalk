.class public Lcom/alibaba/alimei/orm/util/Validator;
.super Ljava/lang/Object;
.source "Validator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isTrue(ZLjava/lang/String;)V
    .locals 1
    .param p0, "trueExpression"    # Z
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 17
    if-nez p0, :cond_0

    .line 18
    new-instance v0, Lcom/alibaba/alimei/orm/AlimeiOrmException;

    invoke-direct {v0, p1}, Lcom/alibaba/alimei/orm/AlimeiOrmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_0
    return-void
.end method

.method public static notNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 11
    if-nez p0, :cond_0

    .line 12
    new-instance v0, Lcom/alibaba/alimei/orm/AlimeiOrmException;

    invoke-direct {v0, p1}, Lcom/alibaba/alimei/orm/AlimeiOrmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_0
    return-void
.end method
