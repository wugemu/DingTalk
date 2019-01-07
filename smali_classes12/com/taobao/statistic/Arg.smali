.class public Lcom/taobao/statistic/Arg;
.super Ljava/lang/Object;
.source "Arg.java"


# instance fields
.field private mArg1:Ljava/lang/Object;

.field private mArg2:Ljava/lang/Object;

.field private mArg3:Ljava/lang/Object;

.field private mArgs:[Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V
    .locals 0
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;
    .param p3, "arg3"    # Ljava/lang/Object;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/taobao/statistic/Arg;->mArg1:Ljava/lang/Object;

    .line 29
    iput-object p2, p0, Lcom/taobao/statistic/Arg;->mArg2:Ljava/lang/Object;

    .line 30
    iput-object p3, p0, Lcom/taobao/statistic/Arg;->mArg3:Ljava/lang/Object;

    .line 31
    iput-object p4, p0, Lcom/taobao/statistic/Arg;->mArgs:[Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public getArg1()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/taobao/statistic/Arg;->mArg1:Ljava/lang/Object;

    return-object v0
.end method

.method public getArg2()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/taobao/statistic/Arg;->mArg2:Ljava/lang/Object;

    return-object v0
.end method

.method public getArg3()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/taobao/statistic/Arg;->mArg3:Ljava/lang/Object;

    return-object v0
.end method

.method public getArgs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/taobao/statistic/Arg;->mArgs:[Ljava/lang/String;

    return-object v0
.end method

.method public setArg1(Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/taobao/statistic/Arg;->mArg1:Ljava/lang/Object;

    .line 40
    return-void
.end method

.method public setArg2(Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/taobao/statistic/Arg;->mArg2:Ljava/lang/Object;

    .line 48
    return-void
.end method

.method public setArg3(Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg3"    # Ljava/lang/Object;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/taobao/statistic/Arg;->mArg3:Ljava/lang/Object;

    .line 56
    return-void
.end method

.method public varargs setArgs([Ljava/lang/String;)V
    .locals 0
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/taobao/statistic/Arg;->mArgs:[Ljava/lang/String;

    .line 64
    return-void
.end method
