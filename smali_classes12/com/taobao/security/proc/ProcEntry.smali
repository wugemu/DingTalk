.class public Lcom/taobao/security/proc/ProcEntry;
.super Ljava/lang/Object;
.source "ProcEntry.java"


# instance fields
.field public action:Ljava/lang/String;

.field public comp:Ljava/lang/String;

.field public kind:I

.field public pack:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "kind"    # I
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "pack"    # Ljava/lang/String;
    .param p4, "comp"    # Ljava/lang/String;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/taobao/security/proc/ProcEntry;->kind:I

    .line 11
    iput-object p2, p0, Lcom/taobao/security/proc/ProcEntry;->action:Ljava/lang/String;

    .line 12
    iput-object p3, p0, Lcom/taobao/security/proc/ProcEntry;->pack:Ljava/lang/String;

    .line 13
    iput-object p4, p0, Lcom/taobao/security/proc/ProcEntry;->comp:Ljava/lang/String;

    .line 14
    return-void
.end method
