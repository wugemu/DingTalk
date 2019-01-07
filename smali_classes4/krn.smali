.class public interface abstract Lkrn;
.super Ljava/lang/Object;
.source "AddressListParserConstants.java"


# static fields
.field public static final a_:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 64
    const/16 v0, 0x22

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "<EOF>"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "\"\\r\""

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "\"\\n\""

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "\",\""

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "\":\""

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "\";\""

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "\"<\""

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "\">\""

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "\"@\""

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "\".\""

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "<WS>"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "<ALPHA>"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "<DIGIT>"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "<ATEXT>"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "<DOTATOM>"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "\"[\""

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "<token of kind 16>"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "<token of kind 17>"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "\"]\""

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "\"(\""

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "\")\""

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "<token of kind 21>"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "\"(\""

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "<token of kind 23>"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "<token of kind 24>"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "\"(\""

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "\")\""

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "<token of kind 27>"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "\"\\\"\""

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "<token of kind 29>"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "<token of kind 30>"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string/jumbo v2, "\"\\\"\""

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string/jumbo v2, "<QUOTEDPAIR>"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string/jumbo v2, "<ANY>"

    aput-object v2, v0, v1

    sput-object v0, Lkrn;->a_:[Ljava/lang/String;

    return-void
.end method
