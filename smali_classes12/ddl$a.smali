.class public final Lddl$a;
.super Ljava/lang/Object;
.source "ChannelGridItemObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lddl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/Long;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field final synthetic e:Lddl;


# direct methods
.method public constructor <init>(Lddl;)V
    .locals 0
    .param p1, "this$0"    # Lddl;

    .prologue
    .line 31
    iput-object p1, p0, Lddl$a;->e:Lddl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
