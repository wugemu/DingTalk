.class public Lorg/apache/james/mime4j/stream/MimeParseEventException;
.super Lorg/apache/james/mime4j/MimeException;
.source "MimeParseEventException.java"


# static fields
.field private static final serialVersionUID:J = 0x404bb151428032ceL


# instance fields
.field private final event:Lksp;


# direct methods
.method public constructor <init>(Lksp;)V
    .locals 1
    .param p1, "event"    # Lksp;

    .prologue
    .line 39
    invoke-virtual {p1}, Lksp;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/MimeException;-><init>(Ljava/lang/String;)V

    .line 40
    iput-object p1, p0, Lorg/apache/james/mime4j/stream/MimeParseEventException;->event:Lksp;

    .line 41
    return-void
.end method


# virtual methods
.method public getEvent()Lksp;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/MimeParseEventException;->event:Lksp;

    return-object v0
.end method
