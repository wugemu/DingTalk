.class public Lrx/exceptions/OnErrorThrowable$OnNextValue;
.super Ljava/lang/RuntimeException;
.source "OnErrorThrowable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/exceptions/OnErrorThrowable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnNextValue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/exceptions/OnErrorThrowable$OnNextValue$a;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2ff0b792f8336acbL


# instance fields
.field private final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "OnError while emitting onNext value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lrx/exceptions/OnErrorThrowable$OnNextValue;->renderValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 163
    instance-of v2, p1, Ljava/io/Serializable;

    if-eqz v2, :cond_0

    .line 164
    move-object v1, p1

    .line 172
    :goto_0
    iput-object v1, p0, Lrx/exceptions/OnErrorThrowable$OnNextValue;->value:Ljava/lang/Object;

    .line 173
    return-void

    .line 167
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, "v":Ljava/lang/String;
    goto :goto_0

    .line 168
    .end local v1    # "v":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 169
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "v":Ljava/lang/String;
    goto :goto_0
.end method

.method static renderValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 200
    if-nez p0, :cond_0

    .line 201
    const-string/jumbo p0, "null"

    .line 219
    .end local p0    # "value":Ljava/lang/Object;
    .local v0, "pluggedRendering":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 203
    .end local v0    # "pluggedRendering":Ljava/lang/String;
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    sget-object v1, Lrx/exceptions/OnErrorThrowable$OnNextValue$a;->a:Ljava/util/Set;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 204
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 206
    :cond_1
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 207
    check-cast p0, Ljava/lang/String;

    goto :goto_0

    .line 209
    :cond_2
    instance-of v1, p0, Ljava/lang/Enum;

    if-eqz v1, :cond_3

    .line 210
    check-cast p0, Ljava/lang/Enum;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 214
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_3
    invoke-static {}, Llkp;->a()Llkp;

    move-result-object v1

    invoke-virtual {v1}, Llkp;->b()Llkl;

    move-result-object v1

    invoke-virtual {v1, p0}, Llkl;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 215
    .restart local v0    # "pluggedRendering":Ljava/lang/String;
    if-eqz v0, :cond_4

    move-object p0, v0

    .line 216
    goto :goto_0

    .line 219
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".class"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lrx/exceptions/OnErrorThrowable$OnNextValue;->value:Ljava/lang/Object;

    return-object v0
.end method
