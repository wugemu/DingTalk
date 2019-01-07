.class Lcom/google/ical/iter/Generator$IteratorShortCircuitingException;
.super Ljava/lang/Exception;
.source "Generator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ical/iter/Generator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IteratorShortCircuitingException"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/ical/iter/Generator$IteratorShortCircuitingException;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/google/ical/iter/Generator$IteratorShortCircuitingException;

    invoke-direct {v0}, Lcom/google/ical/iter/Generator$IteratorShortCircuitingException;-><init>()V

    sput-object v0, Lcom/google/ical/iter/Generator$IteratorShortCircuitingException;->INSTANCE:Lcom/google/ical/iter/Generator$IteratorShortCircuitingException;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 62
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/StackTraceElement;

    invoke-virtual {p0, v0}, Lcom/google/ical/iter/Generator$IteratorShortCircuitingException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 63
    return-void
.end method

.method static instance()Lcom/google/ical/iter/Generator$IteratorShortCircuitingException;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/google/ical/iter/Generator$IteratorShortCircuitingException;->INSTANCE:Lcom/google/ical/iter/Generator$IteratorShortCircuitingException;

    return-object v0
.end method
