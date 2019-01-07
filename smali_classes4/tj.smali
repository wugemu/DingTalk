.class public final Ltj;
.super Ljava/lang/Object;
.source "CryptModel.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "orgId"    # Ljava/lang/String;
    .param p3, "proirity"    # Ljava/lang/String;
    .param p4, "originalUrl"    # Ljava/lang/String;
    .param p5, "encryptUrl"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Ltj;->a:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Ltj;->b:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Ltj;->c:Ljava/lang/String;

    .line 19
    iput-object p4, p0, Ltj;->d:Ljava/lang/String;

    .line 20
    iput-object p5, p0, Ltj;->e:Ljava/lang/String;

    .line 21
    return-void
.end method
