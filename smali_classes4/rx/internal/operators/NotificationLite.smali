.class public final Lrx/internal/operators/NotificationLite;
.super Ljava/lang/Object;
.source "NotificationLite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/NotificationLite$OnErrorSentinel;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;

.field private static final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lrx/internal/operators/NotificationLite$1;

    invoke-direct {v0}, Lrx/internal/operators/NotificationLite$1;-><init>()V

    sput-object v0, Lrx/internal/operators/NotificationLite;->a:Ljava/lang/Object;

    .line 45
    new-instance v0, Lrx/internal/operators/NotificationLite$2;

    invoke-direct {v0}, Lrx/internal/operators/NotificationLite$2;-><init>()V

    sput-object v0, Lrx/internal/operators/NotificationLite;->b:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lrx/internal/operators/NotificationLite;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "t":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    .line 79
    sget-object p0, Lrx/internal/operators/NotificationLite;->b:Ljava/lang/Object;

    .line 81
    .end local p0    # "t":Ljava/lang/Object;, "TT;"
    :cond_0
    return-object p0
.end method

.method public static a(Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 1
    .param p0, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 105
    new-instance v0, Lrx/internal/operators/NotificationLite$OnErrorSentinel;

    invoke-direct {v0, p0}, Lrx/internal/operators/NotificationLite$OnErrorSentinel;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static a(Llgt;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "n"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Llgt",
            "<-TT;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "o":Llgt;, "Llgt<-TT;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 124
    sget-object v2, Lrx/internal/operators/NotificationLite;->a:Ljava/lang/Object;

    if-ne p1, v2, :cond_0

    .line 125
    invoke-interface {p0}, Llgt;->onCompleted()V

    .line 136
    .end local p1    # "n":Ljava/lang/Object;
    :goto_0
    return v0

    .line 127
    .restart local p1    # "n":Ljava/lang/Object;
    :cond_0
    sget-object v2, Lrx/internal/operators/NotificationLite;->b:Ljava/lang/Object;

    if-ne p1, v2, :cond_1

    .line 128
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Llgt;->onNext(Ljava/lang/Object;)V

    move v0, v1

    .line 129
    goto :goto_0

    .line 130
    :cond_1
    if-eqz p1, :cond_3

    .line 131
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lrx/internal/operators/NotificationLite$OnErrorSentinel;

    if-ne v2, v3, :cond_2

    .line 132
    check-cast p1, Lrx/internal/operators/NotificationLite$OnErrorSentinel;

    .end local p1    # "n":Ljava/lang/Object;
    iget-object v1, p1, Lrx/internal/operators/NotificationLite$OnErrorSentinel;->e:Ljava/lang/Throwable;

    invoke-interface {p0, v1}, Llgt;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 135
    .restart local p1    # "n":Ljava/lang/Object;
    :cond_2
    invoke-interface {p0, p1}, Llgt;->onNext(Ljava/lang/Object;)V

    move v0, v1

    .line 136
    goto :goto_0

    .line 138
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The lite notification can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "n"    # Ljava/lang/Object;

    .prologue
    .line 150
    sget-object v0, Lrx/internal/operators/NotificationLite;->a:Ljava/lang/Object;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "n"    # Ljava/lang/Object;

    .prologue
    .line 161
    instance-of v0, p0, Lrx/internal/operators/NotificationLite$OnErrorSentinel;

    return v0
.end method

.method public static d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "n"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 194
    sget-object v0, Lrx/internal/operators/NotificationLite;->b:Ljava/lang/Object;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    .end local p0    # "n":Ljava/lang/Object;
    :cond_0
    return-object p0
.end method

.method public static e(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 1
    .param p0, "n"    # Ljava/lang/Object;

    .prologue
    .line 207
    check-cast p0, Lrx/internal/operators/NotificationLite$OnErrorSentinel;

    .end local p0    # "n":Ljava/lang/Object;
    iget-object v0, p0, Lrx/internal/operators/NotificationLite$OnErrorSentinel;->e:Ljava/lang/Throwable;

    return-object v0
.end method
