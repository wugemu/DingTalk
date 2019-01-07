.class public final Lmp;
.super Ljava/lang/Object;
.source "StringParam.java"

# interfaces
.implements Lli;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lmp;->a:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lmp;->b:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lmp;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lmp;->b:Ljava/lang/String;

    return-object v0
.end method
