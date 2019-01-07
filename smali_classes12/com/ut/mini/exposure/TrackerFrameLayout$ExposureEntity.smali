.class Lcom/ut/mini/exposure/TrackerFrameLayout$ExposureEntity;
.super Ljava/lang/Object;
.source "TrackerFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ut/mini/exposure/TrackerFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ExposureEntity"
.end annotation


# instance fields
.field public area:D

.field public duration:J

.field public exargs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public scm:Ljava/lang/String;

.field public spm:Ljava/lang/String;

.field public viewid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JDLjava/lang/String;)V
    .locals 2
    .param p1, "spm"    # Ljava/lang/String;
    .param p2, "scm"    # Ljava/lang/String;
    .param p3, "exargs"    # Ljava/util/Map;
    .param p4, "duration"    # J
    .param p6, "area"    # D
    .param p8, "viewId"    # Ljava/lang/String;

    .prologue
    .line 632
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 628
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ut/mini/exposure/TrackerFrameLayout$ExposureEntity;->duration:J

    .line 633
    iput-object p1, p0, Lcom/ut/mini/exposure/TrackerFrameLayout$ExposureEntity;->spm:Ljava/lang/String;

    .line 634
    iput-object p2, p0, Lcom/ut/mini/exposure/TrackerFrameLayout$ExposureEntity;->scm:Ljava/lang/String;

    .line 635
    iput-object p3, p0, Lcom/ut/mini/exposure/TrackerFrameLayout$ExposureEntity;->exargs:Ljava/util/Map;

    .line 636
    iput-wide p4, p0, Lcom/ut/mini/exposure/TrackerFrameLayout$ExposureEntity;->duration:J

    .line 637
    iput-wide p6, p0, Lcom/ut/mini/exposure/TrackerFrameLayout$ExposureEntity;->area:D

    .line 638
    iput-object p8, p0, Lcom/ut/mini/exposure/TrackerFrameLayout$ExposureEntity;->viewid:Ljava/lang/String;

    .line 639
    return-void
.end method


# virtual methods
.method public length()I
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 642
    const/4 v2, 0x0

    .line 643
    .local v2, "length":I
    iget-object v4, p0, Lcom/ut/mini/exposure/TrackerFrameLayout$ExposureEntity;->spm:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 644
    iget-object v4, p0, Lcom/ut/mini/exposure/TrackerFrameLayout$ExposureEntity;->spm:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x8

    add-int/lit8 v2, v4, 0x0

    .line 646
    :cond_0
    iget-object v4, p0, Lcom/ut/mini/exposure/TrackerFrameLayout$ExposureEntity;->scm:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 647
    iget-object v4, p0, Lcom/ut/mini/exposure/TrackerFrameLayout$ExposureEntity;->scm:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x8

    add-int/2addr v2, v4

    .line 649
    :cond_1
    iget-object v4, p0, Lcom/ut/mini/exposure/TrackerFrameLayout$ExposureEntity;->exargs:Ljava/util/Map;

    if-eqz v4, :cond_4

    .line 650
    iget-object v4, p0, Lcom/ut/mini/exposure/TrackerFrameLayout$ExposureEntity;->exargs:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 651
    .local v1, "key":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 652
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    .line 654
    :cond_2
    iget-object v4, p0, Lcom/ut/mini/exposure/TrackerFrameLayout$ExposureEntity;->exargs:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 655
    .local v3, "value":Ljava/lang/Object;
    if-eqz v3, :cond_3

    .line 656
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    .line 658
    :cond_3
    add-int/lit8 v2, v2, 0x5

    .line 659
    goto :goto_0

    .line 662
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_4
    iget-object v4, p0, Lcom/ut/mini/exposure/TrackerFrameLayout$ExposureEntity;->viewid:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 663
    iget-object v4, p0, Lcom/ut/mini/exposure/TrackerFrameLayout$ExposureEntity;->viewid:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0xb

    add-int/2addr v2, v4

    .line 667
    :cond_5
    add-int/lit8 v2, v2, 0x32

    .line 669
    return v2
.end method
